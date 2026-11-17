-- Shared by the answer-space filter and shortcode: read the setting,
-- check a value, and build the LaTeX block for it.

local M = {}

local UNITS = { ["in"] = true, cm = true, mm = true, pt = true, em = true, ex = true, bp = true }

-- The space used when `answer-space: true` names no length.
M.DEFAULT = "2in"

-- Return a checked value, or stop the render: a typo must not produce a
-- PDF that silently has no room to write.
function M.check(value, where)
  if value == "page" or value == "0" then
    return value
  end
  local _, unit = value:match("^(%d*%.?%d+)%s*(%a+)$")
  if unit and UNITS[unit] then
    return value
  end
  -- error() alone is not enough: Quarto 1.11.9 logs a Lua filter error and
  -- still writes the output and exits 0, so exit nonzero explicitly.
  io.stderr:write("answer-space: " .. where .. " is '" .. value
    .. "'; expected a TeX length such as 2in, 'page', 'true' or 'false'\n")
  os.exit(1)
end

-- Read the `answer-space` metadata key.
-- Returns enabled (boolean) and the default space (string or nil).
function M.read(meta)
  local raw = meta["answer-space"]
  if raw == nil then
    return true, nil
  end
  local value = pandoc.utils.stringify(raw)
  if value == "false" then
    return false, nil
  end
  if value == "true" then
    return true, M.DEFAULT
  end
  return true, M.check(value, "the answer-space metadata value")
end

-- The block that leaves the space, or nil for none.
function M.block(value)
  if value == "0" then
    return nil
  end
  if value == "page" then
    return pandoc.RawBlock("latex", "\\newpage")
  end
  return pandoc.RawBlock("latex", "\\vspace{" .. value .. "}")
end

return M
