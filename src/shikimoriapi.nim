import asyncdispatch, httpclient, json, strutils, uri

const api = "https://shikimori.one/api"
var headers = newHttpHeaders({
    "Connection": "keep-alive",
    "User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36",
    "Host": "shikimori.one",
    "Accept": "application/json",
    "Content-Type": "application/json"
})

# Achievements
proc get_achievements*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/achievements")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Animes
proc get_animes*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/animes")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_anime*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/animes/" & $id)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_anime_roles*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/animes/" & $id & "/roles")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_anime_similar*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/animes/" & $id & "/similar")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_anime_related*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/animes/" & $id & "/related")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_anime_screenshots*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/animes/" & $id & "/screenshots")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_anime_franchise*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/animes/" & $id & "/franchise")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_anime_external_links*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/animes/" & $id & "/external_links")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_anime_topics*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/animes/" & $id & "/topics")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Characters
proc get_character*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/characters/" & $id)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc search_characters*(query: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded_query = encodeUrl(query)
    let response = await client.get(api & "/characters/search?search=" & encoded_query)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Clubs
proc get_clubs*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/clubs")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_club*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/clubs/" & $id)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_club_animes*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/clubs/" & $id & "/animes")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_club_mangas*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/clubs/" & $id & "/mangas")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_club_members*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/clubs/" & $id & "/members")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Comments
proc get_comments*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/comments")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_comment*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/comments/" & $id)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Constants
proc get_constants_anime*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/constants/anime")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_constants_manga*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/constants/manga")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Forums
proc get_forums*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/forums")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Genres
proc get_genres*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/genres")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Mangas
proc get_mangas*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/mangas")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_manga*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/mangas/" & $id)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_manga_roles*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/mangas/" & $id & "/roles")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# People
proc get_person*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/people/" & $id)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc search_people*(query: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded_query = encodeUrl(query)
    let response = await client.get(api & "/people/search?search=" & encoded_query)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Publishers
proc get_publishers*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/publishers")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Ranobe
proc get_ranobe*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/ranobe")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_ranobe*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/ranobe/" & $id)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Studios
proc get_studios*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/studios")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Topics
proc get_topics*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/topics")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_topics_updates*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/topics/updates")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_topics_hot*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/topics/hot")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_topic*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/topics/" & $id)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Users
proc get_users*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/users")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_user*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/users/" & $id)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_user_info*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/users/" & $id & "/info")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_user_friends*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/users/" & $id & "/friends")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_user_anime_rates*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/users/" & $id & "/anime_rates")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc get_user_manga_rates*(id: int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/users/" & $id & "/manga_rates")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()
  waitFor main()
