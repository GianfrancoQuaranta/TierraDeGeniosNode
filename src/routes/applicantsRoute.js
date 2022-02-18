const express = require('express');
const router = express.Router();
const applicantsController = require('../controllers/applicantsController')

/* GET users listing. */
router.get('/applicants', applicantsController.show);

module.exports = router;
