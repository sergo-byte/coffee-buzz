# Coffee Buzz — café landing page ☕

**English** · [Русский](#coffee-buzz--лендинг-кофейни-)

A one-page landing page for **Coffee Buzz**, a fictional café in Moscow.
Plain HTML, CSS and JavaScript: no frameworks, no build step, no dependencies.

**Live demo:** https://sergo-byte.github.io/coffee-buzz/

> **About this project**
> - **The café is fictional.** The name, address, menu and reviews are made up and do not refer to a real business.
> - **The photos are AI-generated** placeholders.
> - **The site was built with [Claude Code](https://claude.com/claude-code)**, which wrote the code.
> - **My role:** the idea, the requirements, design decisions, and reviewing and testing the result.

## Features

- Responsive layout for desktop, tablet and mobile, with a burger menu on narrow screens
- Sections fade in on scroll (`IntersectionObserver`)
- Accessibility: semantic HTML, visible keyboard focus, alt text, `prefers-reduced-motion`
- Its own design system: a warm palette, Unbounded + Manrope fonts

## Tech

`HTML5` · `CSS3` (custom properties, Grid/Flex, animations) · `vanilla JavaScript` · Google Fonts

## Run locally

```bash
python3 -m http.server 8000
# then open http://localhost:8000
```

## License

MIT, see [LICENSE](LICENSE).

---

# Coffee Buzz — лендинг кофейни ☕

Одностраничный лендинг для вымышленной кофейни **Coffee Buzz**. Чистый HTML/CSS/JS —
без фреймворков, сборки и зависимостей.

**Живое демо:** https://sergo-byte.github.io/coffee-buzz/

> Портфолио-проект: полностью вымышленный концепт-лендинг (название, адрес,
> меню, отзывы — не привязаны к реальному заведению). Фотографии — ИИ-плейсхолдеры.

## Возможности

- Адаптивная вёрстка — десктоп, планшет, мобайл; бургер-меню на узких экранах
- Анимации появления секций на скролле (`IntersectionObserver`)
- Доступность — семантичный HTML, видимый фокус клавиатуры, alt-тексты, `prefers-reduced-motion`
- Собственная дизайн-система — тёплая палитра, шрифты Unbounded + Manrope

## Технологии

`HTML5` · `CSS3` (переменные, Grid/Flex, анимации) · `vanilla JavaScript` · Google Fonts

## Запуск локально

```bash
python3 -m http.server 8000
# затем открой http://localhost:8000
```

## Лицензия

MIT — см. [LICENSE](LICENSE).
