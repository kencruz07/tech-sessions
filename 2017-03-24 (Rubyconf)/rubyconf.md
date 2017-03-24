## #rubyconf Topics
---
### GraphQL [(Netto Farah)](https://speakerdeck.com/nettofarah/rescuing-legacy-codebases-with-graphql-and-rails)
* majestic monoliths vs micro-services
* hybrid approach: rich api + specific clients
* challenges with traditional api
 * different access patterns (different devices)
 * documentation and conventions
* graphql
 * language specification for defining and querying apis
 * describe your data with types
 * load just what you need
 * load multiple entities at once
 * get predictable results
 * focuses on the clients
 * integration layer for multiple services
* graphql in production
 * semantic status codes?
 * monitoring and errors
 * n + 1 queries (resolved by a gem created by nettofarrah graphql-query-resolver)

http://mgiroux.me/2015/getting-started-with-rails-graphql-relay/
