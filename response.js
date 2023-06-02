const response = (status_code, articles, message, res) => {
    res.status(status_code).json({
        payload:{
            status_code: status_code,
            articles: articles
        },
        message: message
    })
}

module.exports = response