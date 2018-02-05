'use strict';

module.exports = function(sequelize, DataTypes) {
    var Coordenada = sequelize.define(
        'Coordenada',
        {
            id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true, allowNull: false },
            latitude: { type: DataTypes.DOUBLE, allowNull: true},
            longitude: { type: DataTypes.DOUBLE, allowNull: true},
            
        },
        {
           
            tableName: 'coordenada',
            timestamps: true
        }
    );

   

    Coordenada.loadScopes = function(models) {}

    return Coordenada;
};