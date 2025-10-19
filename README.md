# [Can you guess my Scryfall search of the week? Try to be as quick as possible!](https://naereen.github.io/Can-you-guess-my-Scryfall-search-of-the-week-MTG/)

This is a tiny web game for Magic: The Gathering fans, powered by the [Scryfall API](https://scryfall.com/docs/api).
Play alone, or challenge your friends!

## How to play?

- Click the *"Generate a random card"* button to reveal a random Magic card matching a secret Scryfall search.
- Try to guess the search criteria based on the cards you see.
- You can switch between English and French using the language toggle at the bottom.
- When you're ready, reveal the solution to see if you guessed correctly (at the end of the page)!

## ✨ Cool features!

- Random card generation from a *hidden* Scryfall search, updated every week (if I think about it).
- Bilingual interface with a button to swap languages (English 🇬🇧 and French 🇫🇷).
- Responsive and simple design.
- Not affiliated with Scryfall or Wizards of the Coast — just for fun!

## 🔧 How to change the weekly Scryfall query

If you'd like to change the Scryfall search used by the game (for example to set a new "search of the week"), simply edit the JavaScript constant in `index.html`:

- Open `index.html` and look for the JS configuration section. Find the constant `SCRYFALL_SEARCH_QUERY` (current example: `t=cleric id=boros game=paper`).
- Replace the string with the Scryfall query you want to use. The script will URL-encode the query automatically.

Example, to search for green 2/2 bear creatures with converted mana cost 2:

```javascript
// in index.html
const SCRYFALL_SEARCH_QUERY = 't=creature t=bear color=green cmc=2 power=2 toughness=2';
```

Notes:

- Use the [Scryfall search syntax](https://scryfall.com/docs/syntax), to build advanced filters.
- The configuration is client-side: anyone viewing the page source can read the query. If you want to keep the query truly secret, do not publish it in `index.html` (or remove the `<details>` "Solution" block that reveals the search explicitly).
- The script automatically appends `unique=cards&as=grid&order=name` and performs URL-encoding, so only provide the `q=` part in plain text.

Enjoy the challenge, and see how quickly you can deduce the weekly query I used!

---

## Link to try out the game

[Play the game here on GitHub](https://naereen.github.io/Can-you-guess-my-Scryfall-search-of-the-week-MTG/)

([Or here on my personal website](https://perso.crans.org/besson/publis/Can-you-guess-my-Scryfall-search-of-the-week-MTG/))

## Screenshot of the game

![screenshot-demo1.png](screenshot-demo1.png)

---

## :scroll: License ? [![GitHub license](https://img.shields.io/github/license/Naereen/Can-you-guess-my-Scryfall-search-of-the-week-MTG)](https://github.com/Naereen/Can-you-guess-my-Scryfall-search-of-the-week-MTG/blob/master/LICENSE)
[MIT License](https://lbesson.mit-license.org/) (file [LICENSE](LICENSE)).
© [Lilian Besson](https://GitHub.com/Naereen), 2025.

[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/Can-you-guess-my-Scryfall-search-of-the-week-MTG/graphs/commit-activity)
[![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://GitHub.com/Naereen/ama)
[![ForTheBadge uses-badges](http://ForTheBadge.com/images/badges/uses-badges.svg)](http://ForTheBadge.com)
[![ForTheBadge uses-git](http://ForTheBadge.com/images/badges/uses-git.svg)](https://GitHub.com/)
[![ForTheBadge uses-html](http://ForTheBadge.com/images/badges/uses-html.svg)](http://ForTheBadge.com)
[![ForTheBadge uses-css](http://ForTheBadge.com/images/badges/uses-css.svg)](http://ForTheBadge.com)
[![ForTheBadge uses-js](http://ForTheBadge.com/images/badges/uses-js.svg)](http://ForTheBadge.com)
