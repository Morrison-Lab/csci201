--[[
answer-space shortcode: `{{< answer-space 1in >}}` leaves space at that
point in PDF output, for example between the parts of one exercise.
With no argument it uses the metadata default, or 2in.
It leaves nothing when the metadata says `answer-space: false`,
and nothing in HTML or other formats.
]]

local common = dofile(pandoc.path.join({
  pandoc.path.directory(PANDOC_SCRIPT_FILE), "answer-space-common.lua",
}))

return {
  ["answer-space"] = function(args, _kwargs, meta)
    local enabled, default_space = common.read(meta)
    if not enabled or not quarto.doc.is_format("latex") then
      return pandoc.Null()
    end
    local value = args[1] and pandoc.utils.stringify(args[1])
      or default_space or common.DEFAULT
    return common.block(common.check(value, "the answer-space shortcode argument"))
      or pandoc.Null()
  end,
}
