require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without name"
    article = Article.New
    article.body = "Body ito"
    assert_not article.save, "Saved article without a name"
  
    test "should not save article without body"
    article = Article.New
    article.body = "Body ito"
    assert_not article.save, "Saved article without a body"
 
end
