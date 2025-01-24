// Variables pour les angles de rotation des planètes et des lunes
float anglePlanet1 = 0, anglePlanet2 = 0, anglePlanet3 = 0, anglePlanet4 = 0;
float selfRotate1 = 0, selfRotate2 = 0, selfRotate3 = 0, selfRotate4 = 0;
float angleMoon1 = 0, angleMoon2 = 0;

void setup() {
  size(800, 600, P3D); // Taille de la fenêtre en 3D
}

void draw() {
  background(0);
  lights(); // Lumière pour un rendu 3D
  noStroke();
  
  // Création de l'étoile centrale
  pushMatrix();
  fill(255, 204, 0); // Couleur jaune pour l'étoile
  translate(width / 2, height / 2, 0);
  sphere(50); // Taille de l'étoile
  popMatrix();

  // Planète 1 avec une lune
  pushMatrix();
  translate(width / 2, height / 2, 0);
  rotateY(anglePlanet1); // Orbite autour de l'étoile
  translate(120, 0, 0); // Distance de la planète par rapport à l'étoile
  rotateY(selfRotate1); // Rotation propre de la planète
  fill(0, 102, 204); // Couleur bleue pour la planète 1
  sphere(15);

  // Lune de la planète 1
  pushMatrix();
  rotateY(angleMoon1); // Orbite de la lune
  translate(30, 0, 0); // Distance de la lune par rapport à la planète
  fill(200, 200, 200); // Couleur grise pour la lune
  sphere(5);
  popMatrix();
  popMatrix();

  // Planète 2 avec une lune
  pushMatrix();
  translate(width / 2, height / 2, 0);
  rotateY(anglePlanet2);
  translate(200, 0, 0);
  rotateY(selfRotate2);
  fill(153, 76, 0); // Couleur brune pour la planète 2
  sphere(20);

  // Lune de la planète 2
  pushMatrix();
  rotateY(angleMoon2);
  translate(35, 0, 0);
  fill(150, 150, 150);
  sphere(6);
  popMatrix();
  popMatrix();

  // Planète 3 sans lune
  pushMatrix();
  translate(width / 2, height / 2, 0);
  rotateY(anglePlanet3);
  translate(280, 0, 0);
  rotateY(selfRotate3);
  fill(0, 255, 127); // Couleur verte pour la planète 3
  sphere(25);
  popMatrix();

  // Planète 4 sans lune
  pushMatrix();
  translate(width / 2, height / 2, 0);
  rotateY(anglePlanet4);
  translate(360, 0, 0);
  rotateY(selfRotate4);
  fill(255, 69, 0); // Couleur orange pour la planète 4
  sphere(30);
  popMatrix();

  // Mise à jour des angles d'orbite et de rotation
  anglePlanet1 += 0.02;
  anglePlanet2 += 0.015;
  anglePlanet3 += 0.01;
  anglePlanet4 += 0.008;
  selfRotate1 += 0.03;
  selfRotate2 += 0.025;
  selfRotate3 += 0.02;
  selfRotate4 += 0.015;
  angleMoon1 += 0.05;
  angleMoon2 += 0.03;
}
