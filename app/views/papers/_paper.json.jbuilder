json.extract! paper, :id, :title, :authorName1, :authorName2, :authorName3, :authorName4, :authorName5, :comAuthor, :comAddr, :year, :journal, :survey_id, :created_at, :updated_at
json.url paper_url(paper, format: :json)
