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
    core.setOutput('envTag', releaseEnv)
    const descriptor = calculators[context.repo.repo]
    if (!descriptor) {
      throw new Error('No calcId found for this repo!')
    }
    core.setOutput('calcId', descriptor.calcId)
  } catch (error) {
    if (error instanceof Error) core.setFailed(error.message)
  }
}

run()
