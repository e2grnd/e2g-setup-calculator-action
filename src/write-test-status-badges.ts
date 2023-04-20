import fsAll from 'fs'
/* eslint-disable github/array-foreach */
import {CalcConfig, calculators} from './calculators'

const fs = fsAll.promises

function tableRow(repoName: string, calcConfig: CalcConfig): string {
  let md = ''
  md += `| ${calcConfig.serviceName}`
  md += ` | [${repoName}](https://github.com/e2grnd/${repoName})`
  if (!repoName.endsWith('-calculator')) {
    md += ' 🚯'
  }
  md += ` | [![dev](https://github.com/e2grnd/${repoName}/actions/workflows/test.yml/badge.svg?branch=release%2Fdev)](https://github.com/e2grnd/${repoName}/actions/workflows/test.yml)`
  md += ` | [![stage](https://github.com/e2grnd/${repoName}/actions/workflows/test.yml/badge.svg?branch=release%2Fstage)](https://github.com/e2grnd/${repoName}/actions/workflows/test.yml)`
  md += ` | [![prod](https://github.com/e2grnd/${repoName}/actions/workflows/test.yml/badge.svg?branch=release%2Fprod)](https://github.com/e2grnd/${repoName}/actions/workflows/test.yml)`
  md += ' | \n'
  return md
}

async function run(): Promise<void> {
  let md = `# Calculator Repo Test Action Status

## EEC

| Service | Repo | Dev | Stage | Prod | 
| ------- | ---- | --- | ----- | ---- |
  `
  Object.entries(calculators)
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    .forEach(([repoName, calcConfig]) => {
      md += tableRow(repoName, calcConfig)
    })
  await fs.writeFile('test-status.md', md)
}

run()
