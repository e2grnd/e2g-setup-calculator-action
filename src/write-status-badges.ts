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
  md += ` | [![dev](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml/badge.svg?branch=release%2Fdev)](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml)`
  if (calcConfig.trame) {
    md += ` [![dev](https://github.com/e2grnd/${repoName}/actions/workflows/publish-trame.yml/badge.svg?branch=release%2Fdev)](https://github.com/e2grnd/${repoName}/actions/workflows/publish-trame.yml)`
  }
  md += ` | [![stage](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml/badge.svg?branch=release%2Fstage)](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml)`
  if (calcConfig.trame) {
    md += ` [![stage](https://github.com/e2grnd/${repoName}/actions/workflows/publish-trame.yml/badge.svg?branch=release%2Fstage)](https://github.com/e2grnd/${repoName}/actions/workflows/publish-trame.yml)`
  }
  md += ` | [![prod](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml/badge.svg?branch=release%2Fprod)](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml)`
  if (calcConfig.trame) {
    md += ` [![prod](https://github.com/e2grnd/${repoName}/actions/workflows/publish-trame.yml/badge.svg?branch=release%2Fprod)](https://github.com/e2grnd/${repoName}/actions/workflows/publish-trame.yml)`
  }
  md += ' | \n'
  return md
}

async function run(): Promise<void> {
  let md = `# Calculator Repo Publish Action Status

## EEC

| Service | Repo | Dev | Stage | Prod | 
| ------- | ---- | --- | ----- | ---- |
  `
  Object.entries(calculators)
    .filter(
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      ([repoName, calcConfig]) => calcConfig.deploymentRepo === 'eec-kustomize',
    )
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    .forEach(([repoName, calcConfig]) => {
      md += tableRow(repoName, calcConfig)
    })

  md += `

---

## CAN2

| Service | Repo | Dev | Stage | Prod | 
| ------- | ---- | --- | ----- | ---- |
  `
  Object.entries(calculators)
    .filter(
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      ([repoName, calcConfig]) =>
        calcConfig.deploymentRepo === 'can2-kustomize',
    )
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    .forEach(([repoName, calcConfig]) => {
      md += tableRow(repoName, calcConfig)
    })

  md += `

---

## CorrSolutions

| Service | Repo | Dev | Stage | Prod | 
| ------- | ---- | --- | ----- | ---- |
  `
  Object.entries(calculators)
    .filter(
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      ([repoName, calcConfig]) =>
        calcConfig.deploymentRepo === 'corrsolutions-kustomize',
    )
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    .forEach(([repoName, calcConfig]) => {
      md += tableRow(repoName, calcConfig)
    })
  await fs.writeFile('status.md', md)
}

run()
