const db = require('../database/models');

const applicantsController = {
    show: async (req, res) => {
        try { 

            console.log('Hasta acá sí');

            let applicants = await db.Applicant.findAll()
            console.log('applicants', applicants);

            return res.send(applicants)
            
        } catch (e) { res.send(e) }

       //return res.send('Hello Word')
    }
}

module.exports = applicantsController;