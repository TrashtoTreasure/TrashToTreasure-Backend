const articleResponse = (status_code, articles, message, res) => {
    let payload = {};
  
    if (articles !== null) {
      payload.articles = articles;
    }
  
    res.status(status_code).json({
      payload: payload,
      message: message,
    });
  };
  
  const feedbackResponse = (status_code, feedback, message, res) => {
    let payload = {};
  
    if (feedback !== null) {
      payload.feedback = feedback;
    }
  
    res.status(status_code).json({
      payload: payload,
      message: message,
    });
  };
  
  module.exports = {
    articleResponse,
    feedbackResponse
  };
  