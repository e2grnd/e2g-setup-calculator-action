import * as core from '@actions/core'
import * as github from '@actions/github'

import {calculators} from './calculators'

async function run(): Promise<void> {
  try {
    const context = github.context
    core.setOutput('repo', context.repo.repo)
    const releaseEnv = context.ref.startsWith('refs/heads/release/')
      ? context.ref.toLowerCase().replace('refs/heads/release/', '')
      : undefined
    core.setOutput('releaseEnv', releaseEnv)
    core.info(`releaseEnv: "${releaseEnv}"`)
    const descriptor = calculators[context.repo.repo]
    if (!descriptor) {
      throw new Error('No calcId found for this repo!')
    }
    core.setOutput('calcId', descriptor.calcId)
    core.info(`calcId: "${descriptor.calcId}"`)
    const imageTag = `${releaseEnv}-sha-${context.sha.slice(0, 7)}`
    core.setOutput('imageTag', imageTag)
    core.info(`imageTag: "${imageTag}"`)
  } catch (error) {
    if (error instanceof Error) core.setFailed(error.message)
  }
}

run()
