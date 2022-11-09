import fsAll from 'fs'
import {calculators} from './calculators'

const fs = fsAll.promises

async function run(): Promise<void> {
  const sortedRepos = Object.entries(calculators)
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    .filter(([_repoName, cfg]) => !cfg.noSync) // eslint-disable-line @typescript-eslint/no-unused-vars
    .map(([repoName]) => `e2grnd/${repoName}@release/dev`)
  const src = `group:
  repos: |
    ${sortedRepos.join('\n    ')}
  files: 
    - source: .github/workflows/publish.yml
      dest: .github/workflows/publish.yml
    - source: .github/workflows/test.yml
      dest: .github/workflows/test.yml
    - source: .devcontainer/docker-compose.yaml
      dest: .devcontainer/docker-compose.yaml
    - source: .devcontainer/docker-compose.app.yaml
      dest: .devcontainer/docker-compose.app.yaml
    # - source: .devcontainer/devcontainer.json
    #   dest: .devcontainer/devcontainer.json
    - source: .devcontainer/scripts/init.mjs
      dest: .devcontainer/scripts/init.mjs
`

  await fs.writeFile('repo-sync-config.yaml', src)
}

run()
