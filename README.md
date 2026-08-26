# Natural Writing Skill

A Codex/ChatGPT-compatible writing skill for rewriting, auditing, and drafting natural-sounding copy while preserving the user's voice.

This repository is structured so it can be installed with the `skills` CLI.

## Install globally

```sh
npx skills add mcavazostx/natural-writing-skill --skill natural-writing --global --yes
```

## Use

```text
/natural-writing Rewrite this so it sounds more natural: [your text]
```

```text
/natural-writing Audit this for generic AI-style wording: [your text]
```

```text
/natural-writing Write a Facebook post using only these facts: [facts]
```

## What it does

- Preserves your personal voice
- Removes generic and canned AI-style language
- Makes writing more direct and specific
- Audits writing without pretending to know who or what wrote it
- Includes safeguards for real-estate marketing copy
- Works for email, text, social posts, listing descriptions, scripts, and newsletters

## Repository structure

```text
natural-writing-skill/
├── .codex-plugin/
│   └── plugin.json
├── skills/
│   └── natural-writing/
│       └── SKILL.md
├── LICENSE
└── README.md
```

## License

MIT
