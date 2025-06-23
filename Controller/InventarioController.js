module.exports = {
    novoItem(req, res) {
        const dadosRecebidos = req.body;
        res.json({
            mensagem: 'Dados recebidos com sucesso!',
            dados: dadosRecebidos
        });
    }
}