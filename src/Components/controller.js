module.exports = {
    getAllStates: async (req, res) => {
        const allStates = await req.app.get('db').getAllStates(1)
        return res.status(200).send(allStates)
    },

    getOneState: async (req, res) => {
        const oneState = await req.app.get('db').getOneState(1)
        return res.status(200).send(oneState)
    },

    createPost: async (req, res) => {
        const createpost = await req.app.get('db').createPost(1)
        return res.status(200).send(createpost)
    },

    editPost: async (req, res) => {
        const editpost = await req.app.get('db').editPost(1)
        return res.status(200).send(editpost)
    },

    deletePost: async (req, res) => {
        const deletepost = await req.app.get('db').deletePost(1)
        return res.status(200).send(deletepost)
    }
     
}