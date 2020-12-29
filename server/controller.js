module.exports = {
    delete: ( req, res, next ) => {
        const dbInstance = req.app.get('db');
        const { postid } = req.params;
      
        dbInstance.delete( postid )
          .then( (response) => res.status(200).send(response) )
          .catch( err => {
            res.status(500).send({errorMessage: "Oops! Something went wrong. Our engineers have been informed!"});
            console.log(err)
          } );
      },

      getPost: (req,res,next) => {
        let { postid } = req.params;
        const db = req.app.get("db");
      
        db.get_by_id([postid])
          .then(response => {
            res.status(200).send(response);
          })
          .catch(err => res.status(500).send(err));
        }
}