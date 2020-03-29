const express = require('express');
const router = express.Router();

router.use('/bird', require('./bird'));
router.use('/resource', require('./resource'));
router.use('/threat', require('./threat'));
router.use('/tip', require('./tip'));

module.exports = router;