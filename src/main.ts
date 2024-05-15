import * as core from '@actions/core'
import * as github from '@actions/github'

import {calculators} from './calculators'

async function run(): Promise<void> {
  try {
    const context = github.context
    core.setOutput('repo', context.repo.repo)
    const rawBranchName = context.ref.replace('refs/heads/', '')
    core.setOutput('rawBranchName', rawBranchName)
    core.info(`rawBranchName: "${rawBranchName}"`)
    const releaseEnv = context.ref.startsWith('refs/heads/release/')
      ? context.ref.toLowerCase().replace('refs/heads/release/', '')
      : undefined
    core.setOutput('releaseEnv', releaseEnv)
    core.info(`releaseEnv: "${releaseEnv}"`)
    const descriptor = calculators[context.repo.repo]
    if (!descriptor) {
      throw new Error('No descriptor definition found for this repo!')
    }
    core.setOutput('imageName', descriptor.imageName)
    core.info(`imageName: "${descriptor.imageName}"`)
    core.setOutput('serviceName', descriptor.serviceName)
    core.info(`serviceName: "${descriptor.serviceName}"`)
    const imageTag = `${releaseEnv}-sha-${context.sha.slice(0, 7)}`
    core.setOutput('imageTag', imageTag)
    core.info(`imageTag: "${imageTag}"`)
    core.notice(`Created tag: ${imageTag}`)
    core.notice(
      `View image: https://console.cloud.google.com/gcr/images/sandbox-225221/global/${descriptor.imageName}?authuser=1&project=sandbox-225221`,
    )
    core.info(`deploymentRepo: ${descriptor.deploymentRepo}`)
    core.setOutput('deploymentRepo', descriptor.deploymentRepo)
  } catch (error) {
    if (error instanceof Error) core.setFailed(error.message)
  }
}

run()
