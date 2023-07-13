--[[
    项目管理插件
]]

function exec(cmd)
    return cmd..'<CR>'
end

recent_projects = exec [[:lua require("telescope").extensions.projects.projects{}]]
-- browse_project_files = exec

