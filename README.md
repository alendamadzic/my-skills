# dev-setup

Bootstrap scripts for new development projects.

## Skills

Installs the standard skill set in one command:

```bash
bash install-skills.sh
```

Or run directly from GitHub (no clone needed):

```bash
bash <(curl -s https://raw.githubusercontent.com/alendamadzic/my-skills/main/install-skills.sh)
```

### Skills installed

| Skill | Description |
|---|---|
| `make-interfaces-feel-better` | Design engineering principles for polished UI |
| `frontend-design` | Distinctive, production-grade frontend interfaces |
| `vercel-react-best-practices` | React & Next.js performance optimisation (70 rules) |
| `remotion-best-practices` | Domain knowledge for building videos with Remotion |
| `shadcn` | shadcn/ui component management |

## Adding more skills

Add a new entry to the `SKILLS` array in `install-skills.sh`:

```bash
"https://github.com/<repo>|<skill-name>"
```

Find the repo URL and skill name on [skills.sh](https://www.skills.sh).

## Requirements

- [Bun](https://bun.sh) installed (`bunx` is used to run the skills CLI)
