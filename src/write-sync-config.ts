import fsAll from 'node:fs'
import { calculators } from './calculators'

const fs = fsAll.promises

async function run(): Promise<void> {
  const sortedCalcs = Object.entries(calculators)
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    .filter(([_repoName, cfg]) => !cfg.noSync) // eslint-disable-line @typescript-eslint/no-unused-vars
  const standardCalcRepos = sortedCalcs.map(([repoName]) => `e2grnd/${repoName}@release/dev`)
  const standardReposChunk = `  - repos: |
      e2grnd/calculator-template@release/dev
      ${standardCalcRepos.join('\n      ')}
    files: 
      - source: workflows/publish.yml
        dest: .github/workflows/publish.yml
      - source: devcontainer/docker-compose.app.yaml
        dest: .devcontainer/docker-compose.app.yaml
      - source: devcontainer/devcontainer.json
        dest: .devcontainer/devcontainer.json
      - source: vscode/launch.json
        dest: .vscode/launch.json
      - source: HELP.md
        dest: HELP.md
`

  const trameCalcRepos = sortedCalcs
    .filter(([_repoName, cfg]) => cfg.trame) // eslint-disable-line @typescript-eslint/no-unused-vars
    .map(([repoName]) => `e2grnd/${repoName}@release/dev`)
  const trameReposChunk = `  - repos: |
      ${trameCalcRepos.join('\n      ')}
    files: 
      - source: workflows/publish-trame.yml
        dest: .github/workflows/publish-trame.yml
      - source: vscode/launch.json
        dest: .vscode/launch.json
  `
  const src = `group:
${standardReposChunk}
${trameReposChunk}`
  await fs.mkdir('etc', { recursive: true })
  await fs.writeFile('etc/repo-sync-config.yaml', src)
}

run()
