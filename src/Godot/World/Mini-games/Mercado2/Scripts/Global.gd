extends Node2D

var interacao = false
var interacaoTimer = 0

var estrela = null

var pontos = 0
var maca = preload("res://World/Mini-games/Mercado2/Scenes/Maca.tscn")
var balas = preload("res://World/Mini-games/Mercado2/Scenes/Balas.tscn")
var brocolis = preload("res://World/Mini-games/Mercado2/Scenes/Brocolis.tscn")
var batata = preload("res://World/Mini-games/Mercado2/Scenes/Batata.tscn")
var abacaxi = preload("res://World/Mini-games/Mercado2/Scenes/Abacaxi.tscn")
var chocolate = preload("res://World/Mini-games/Mercado2/Scenes/Chocolate.tscn")
var agua = preload("res://World/Mini-games/Mercado2/Scenes/Agua.tscn")
var salgadinho = preload("res://World/Mini-games/Mercado2/Scenes/Salgadinho.tscn")

# Verifica se o botão de interação foi clicado e coloca a interacao como verdadeira, torna-se falsa depois de um segundo.
func interacao():
	if Input.is_action_just_pressed("ui_accept"):
		print("foi")
		interacao = true
	if interacaoTimer >= 60:
		interacao = false

func _on_SpawnTimer_timeout():

	var maca_instance = maca.instance()
	add_child(maca_instance)
	maca_instance.position = $Spawn.position
	
func _on_SpawnTimer2_timeout():
	
	var balas_instance = balas.instance()
	add_child(balas_instance)
	balas_instance.position = $Spawn2.position
	
func _on_SpawnTimer3_timeout():
	
	var brocolis_instance = brocolis.instance()
	add_child(brocolis_instance)
	brocolis_instance.position = $Spawn3.position
	
func _on_SpawnTimer4_timeout():
	
	var batata_instance = batata.instance()
	add_child(batata_instance)
	batata_instance.position = $Spawn4.position
	
func _on_SpawnTimer5_timeout():
	
	var abacaxi_instance = abacaxi.instance()
	add_child(abacaxi_instance)
	abacaxi_instance.position = $Spawn5.position
	
func _on_SpawnTimer6_timeout():
	
	var chocolate_instance = chocolate.instance()
	add_child(chocolate_instance)
	chocolate_instance.position = $Spawn6.position
	
func _on_SpawnTimer7_timeout():
	
	var agua_instance = agua.instance()
	add_child(agua_instance)
	agua_instance.position = $Spawn7.position
	
func _on_SpawnTimer8_timeout():
	
	var salgadinho_instance = salgadinho.instance()
	add_child(salgadinho_instance)
	salgadinho_instance.position = $Spawn8.position
	
	var nodes = get_tree().get_nodes_in_group("Spawn")
	var node = nodes[randi() % 11]
	var position = node.position
	$Spawn.position = position
	$Spawn2.position = position
	$Spawn3.position = position
	$Spawn4.position = position
	$Spawn5.position = position
	$Spawn6.position = position
	$Spawn7.position = position
	$Spawn8.position = position
	
# Cria um Timer que limita o tempo de efetividade do botao de interacao para um segundo
func _process(delta):
	interacaoTimer += 1
	if interacaoTimer > 60:
		interacaoTimer = 0
