    module.exports = function (sequelize, dataTypes) {
        const cols = {
            id: {
                autoIncrement: true,
                primaryKey: true,
                type: dataTypes.INTEGER,
                allowNull: false
            },
            firstName: {
                type: dataTypes.STRING(100),
                allowNull: false
            },
            lastName: {
                type: dataTypes.STRING(100),
                allowNull: false
            },
            email: {
                type: dataTypes.STRING(100),
                allowNull: false,
                unique: true
            },
            dni: {
                type: dataTypes.NUMBER(10),
                alloNull: false
            },
            birthDate: {
                type: dataTypes.DATE,
                allowNull: false
            },
            birthCity: {
                type: dataTypes.STRING(100),
                allowNull: false
            },
            liveCity: {
                type: dataTypes.STRING(100),
                allowNull: false
            },
            locality: {
                type: dataTypes.STRING(100),
                alloNull: false
            },
            country: {
                type: dataTypes.STRING(100),
                allowNull: false
            },
            formation: {
                type: dataTypes.STRING(100),
                allowNull: false
            },
            career: {
                type: dataTypes.STRING(100),
                allowNull: false
            },
            academy: {
                type: dataTypes.STRING(100),
                allowNull: false
            },
            motivation: {
                type: dataTypes.STRING(100),
                allowNull: false
            },
            computer: {
                type: dataTypes.NUMBER(1),
                allowNull: false
            },
            internet: {
                type: dataTypes.NUMBER(1),
                allowNull: false
            },
            profile: {
                type: dataTypes.TEXT,
                allowNull: false    
            }, 
            youtubeLink: {
                type: dataTypes.STRING(250),
                allowNull: false
            },
            programmation: {
                type: dataTypes.STRING(250),
                allowNull: false
            },
            avatar: {
                type: dataTypes.STRING(200),
                allowNull: false
            },
            password: {
                type: dataTypes.STRING(100),
                allowNull: false
            },
            phoneNumber: {
                type: dataTypes.NUMBER(20),
                allowNull: false
            },
            phoneNumber2: {
                type: dataTypes.NUMBER(20),
                allowNull: false
            },
            created_at: {
                type: dataTypes.DATE,
                allowNull: false
            },
            updated_at: {
                type: dataTypes.DATE,
                allowNull: false
            }
        }

        const config = {
            timestamps: false
        }

        const Applicant = sequelize.define('Applicant', cols, config);

        return Applicant

    }