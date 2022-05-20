import java.util.UUID

multibranchPipelineJob('generate-me') {
    branchSources {
        git {
            id(UUID.randomUUID().toString())
            remote('https://gitlab.novatec-gmbh.de/cra/foobar.git')
            credentialsId('cra-gitlab')
        }
    }
    orphanedItemStrategy {
        discardOldItems {
            numToKeep(20)
        }
    }
}
