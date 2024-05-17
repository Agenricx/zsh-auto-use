# 定义一个函数来检查nvm和.nvmrc的存在性，以及执行`nvm use`
function check_and_use_nvm() {
    # 检查nvm命令是否存在
    if type nvm > /dev/null 2>&1; then
        # 检查当前目录下是否存在.nvmrc文件
        if [[ -f ".nvmrc" ]]; then
            nvm use
        fi
    fi
}

autoload -U add-zsh-hook
add-zsh-hook chpwd check_and_use_nvm