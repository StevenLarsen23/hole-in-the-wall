let posts = []

module.exports = {
  getAllStates: async (req, res) => {
    const db = req.app.get("db");
    const allStates = await db.get_all_states();
    res.status(200).send(allStates);
  },

  getOneState: async (req, res) => {
    const db = req.app.get("db");
    const { id } = req.params;
    const [usState] = await db.get_one_state(+id);
    if (usState) {
      res.status(200).send(usState);
    } else {
      res.status(400).send("State not found");
    }
  },

  getAllPosts: async (req, res) => {
    const db = req.app.get("db");
    const posts = await db.get_all_posts();
    res.status(200).send(posts);
  },

  getPost: async (req, res) => {
    const db = req.app.get("db");
    const { id } = req.params;

    const post = await db.get_one_post(+id);
    res.status(200).send(post);
  },

  statePost: async (req, res) => {
    const db = req.app.get('db')
    const {id} = req.params;

    const posts = await db.get_state_posts(+id)
    res.status(200).send(posts)
  },

  createPost: async (req, res) => {
    const db = req.app.get("db");
    const { location_id, name, img, content } = req.body;
    try {
      const post = await db.create_post([location_id, name, img, content]);
      res.status(200).send(post);
    } catch (err) {
      console.log("Error adding post", err);
      res.sendStatus(500);
    }
  },

  editPost: async (req, res) => {
    const db = req.app.get("db");
    const { id } = req.params;
    const { name, img, content } = req.body;
    try {
      const posts = await db.edit_post([+id, name, img, content]);
      res.status(200).send(posts);
    } catch (err) {
      console.log("Error editing post", err);
      res.sendStatus(500);
    }
  },

  deletePost: async (req, res) => {
    const db = req.app.get("db");
    const { id } = req.params;

    try {
      const posts = await db.delete_post(+id);
      return res.status(200).send(posts);
    } catch (err) {
      console.log(`Couldn't delete post`, err);
      res.sendStatus(500);
    }
  },
};
