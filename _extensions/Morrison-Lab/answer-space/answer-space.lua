--[[
answer-space filter: leave room for handwritten answers in PDF output.

After each exercise div (an id starting `exr-`), it adds vertical space in
LaTeX output, so a printed copy has room to work each exercise.
HTML and other formats are untouched.

Set it in document or project metadata:

  answer-space: 2in      # space after every exercise (any TeX length)
  answer-space: true     # the same, with the 2in default
  answer-space: page     # start the next exercise on a new page
  answer-space: false    # no space at all (for example, in a solution profile)

With no `answer-space` key it adds nothing, unless a div asks for space:
an `answer-space="3in"` attribute on an exercise div sets that exercise's
space, and `answer-space="0"` gives it none.
`answer-space: false` overrides every attribute.

A value that is not a TeX length, `page`, `true` or `false` stops the render.
]]

local common = dofile(pandoc.path.join({
  pandoc.path.directory(PANDOC_SCRIPT_FILE), "answer-space-common.lua",
}))

local enabled = true
local default_space = nil

local function add_space(div)
  if not enabled or not quarto.doc.is_format("latex") then
    return nil
  end
  if not div.identifier:match("^exr%-") then
    return nil
  end
  local value = div.attributes["answer-space"] or default_space
  if value == nil then
    return nil
  end
  local block = common.block(common.check(value,
    "the answer-space attribute of #" .. div.identifier))
  if block == nil then
    return nil
  end
  return { div, block }
end

return {
  { Meta = function(meta) enabled, default_space = common.read(meta) end },
  { Div = add_space },
}
