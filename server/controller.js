module.exports = {
  getAllStates: async (req, res) => {
    const db = req.app.get("db");
    const allStates = await db.get_all_states();
    res.status(200).send(allStates);
  },

  getOneState: async (req, res) => {
    const db = req.app.get("db");
    const { id } = req.params;
    const [state] = await db.get_one_state(+id);
    if (state) {
      res.status(200).send(state);
    } else {
      res.status(404).send("State not found");
    }
  },

  getStatePosts: async (req, res) => {
    const db = req.app.get("db");
    const { id } = req.params;
    const posts = await db.get_state_posts(+id);
    res.status(200).send(posts);
  },

  getPost: async (req, res) => {
    const db = req.app.get("db");
    const { id } = req.params;

    const post = await db.get_one_post(+id);
    res.status(200).send(post);
  },

  // NOT WORKING
  createPost: async (req, res) => {
    const db = req.app.get("db");
    console.log(req.body)
    const { location_id, name, img, content } = req.body;
    try {
      const post = await db.create_post([location_id, name, img, content]);
      res.status(200).send(post);
    } catch (err) {
      console.log("Error adding post", err);
      res.sendStatus(500);
    }
  },

  // NOT WORKING
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
