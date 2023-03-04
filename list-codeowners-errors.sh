. .gh-api-examples.conf

# https://docs.github.com/en/rest/repos/repos#list-codeowners-errors
# GET /repos/{owner}/{repo}/codeowners/errors

# If the script is passed an argument $1 use that as the name
if [ -z "$1" ]
  then
    repo=$repo
  else
    repo=$1
fi

owner=${org}

curl ${curl_custom_flags} \
     -H "Accept: application/vnd.github.v3+json" \
     -H "Authorization: Bearer ${GITHUB_TOKEN}" \
     ${GITHUB_API_BASE_URL}/repos/${owner}/${repo}/codeowners/errors
