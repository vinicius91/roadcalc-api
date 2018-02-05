'use strict';

var util = require('util');
var models = require('../models');

module.exports = {
    listCoordenada: list,
    saveCoordenada: save,
    findCoordenada: find,
    updateCoordenada: update,
    removeCoordenada: remove
};


function find(request, response) {
  var coordenada_id = request.swagger.params.coordenada_id.value || null;

    models.Coordenada.findById(coordenada_id)
    .then(registro => {
        return (registro) ?
        response.json(registro) :
        response.status(404).send('Categoria não encontrada.');
    }).catch(function (error) {
        console.log(error);
        response.status(500).send(error);
    });
  
}

function save(request, response) {
    
    var registro = null;
    return models.sequelize.transaction(function (t) {
        var body = request.swagger.params.body.value;

        return models.Coordenada.create(
            body, { transaction: t }
        ).then(function (resultado) { registro = resultado });
    }).then(function () {
        response.status(201).send(registro);
    }).catch(function (error) {
        console.log(error);
        response.status(500).send(error);
    });
    
}

function list(request, response) {
    
    models.Coordenada.findAll({ order: [['id', 'ASC']] })
    .then(registros => {
        return (Array.isArray(registros) && registros.length) ?
        response.json(registros) : response.send(204);
    }).catch(function (error) {
        console.log(error);
        response.status(500).send(error);
    });
  }
  
  function update(request, response) {
      
    return models.sequelize.transaction(function (t) {
        var coordenada_id = request.swagger.params.coordenada_id.value || null;
        var body = request.swagger.params.body.value;

        return models.Coordenada.update(
            body, { where: { id: coordenada_id }, transaction: t }
        );
    }).then(function () {
        find(request, response);
    }).catch(function (error) {
        console.log(error);
        response.status(500).send(error);
    });
  }

  function remove(request, response) {
    return models.sequelize.transaction(function (t) {
        var coordenada_id = request.swagger.params.coordenada_id.value || null;

        return models.Coordenada.destroy({
            where: { id:coordenada_id }, transaction: t
        });
    }).then(function () {
        response.status(200).send('Coordenada removida com sucesso.');
    }).catch(function (error) {
        console.log(error);
        response.status(500).send(error);
    });
}
