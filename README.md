# Конфігурація NeoVim на Lua

![Arch Linux](https://img.shields.io/badge/Arch%20Linux-232637?style=for-the-badge&logo=archlinux&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)
![NeoVim](https://img.shields.io/badge/NeoVim-ff7718?style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-FDE003?style=for-the-badge&logo=lua&logoColor=black)
<br>
![Plugins](https://img.shields.io/badge/Plugins:%2013-BACBD9)
![main-screenshot](./screenshots/scr1.png)

## Пакети для встановлення

### Основні пакети:
- **lua** -> мова програмування
- **nvim** -> текстовий редактор

### Для коректної роботи LSP-сервера:
- **clang** -> LSP-сервер для мов C/C++
- **npm** -> пакет для працювання із JS/TS

### Додаткові пакети:
- **xclip** -> для працювання clipboard
- **ripgrep** -> для telescope
- **unzip** -> для деяких пакетів

## Використані плагіни
1. **cmp** -> підсказки при написанні коду
2. **lsp** -> інтеграція із LSP-серверами
3. **nvim-tree** -> дерево файлової структури для взаємодії та переміщення по ній
4. **lualine** -> можливість відображати інформацію у окремому барі
5. **bufferline** -> керування буферами (вкладками)
6. **comment** -> закоментовування коду завдяки комбінаціям клавіш
7. **colorizer** -> розфарбовування назви кольорів у їх колір
8. **autoclose** -> автоматично закриває дужки та лапки
9. **luasnip** -> готові синтаксичні конструкції для різних мов програмування
10. **markdown-preview** -> можливість у браузері бачити результат для Markdown файлів
11. **gruvbox** -> тема для NeoVim
12. **dap** -> дебагер для коду
13. **telescope** -> для зручного пошуку

## Встановлення конфігурації

**1. Встановлюємо пакети**
```sh
sudo pacman -S lua nvim clang npm xclip ripgrep unzip
```

**2. Клонуємо репозиторій**
```sh
git clone https://github.com/Ilya-MAO/NeoVim-config.git "$HOME/.config/nvim/"
```
