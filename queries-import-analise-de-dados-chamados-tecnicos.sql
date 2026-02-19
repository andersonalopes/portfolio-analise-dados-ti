-- Total de chamados por tipo
SELECT tipo_chamado, COUNT(*) AS total
FROM chamados
GROUP BY tipo_chamado;

-- Tempo médio de resolução
SELECT AVG(tempo_resolucao_horas) AS tempo_medio
FROM chamados;

-- Chamados por técnico
SELECT tecnico, COUNT(*) AS total
FROM chamados
GROUP BY tecnico;

-- Chamados por cidade (com JOIN)
SELECT c.cidade, COUNT(*) AS total
FROM chamados ch
JOIN clientes c ON ch.id_cliente = c.id_cliente
GROUP BY c.cidade;

