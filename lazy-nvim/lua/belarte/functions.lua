function SetTabSpaces(space)
    if type(space) ~= "number" then
        print("not a number")
        return
    end

    vim.opt.shiftwidth = space
    vim.opt.tabstop = space
end

