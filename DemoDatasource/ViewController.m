//
//  ViewController.m
//  DemoDatasource
//
//  Created by Tekhne on 10/12/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSArray *personajes;
    NSArray *consolas;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Personaje *mario = [[Personaje alloc] init];
    [mario setNombre:@"Mario"];
    [mario setImagen:@"mario.jpg"];
    
    Personaje *luigi = [[Personaje alloc] init];
    luigi.nombre = @"Luigi";
    luigi.imagen = @"luigi.jpg";
    
    Personaje *donkeyKong = [[Personaje alloc] init];
    [donkeyKong setNombre:@"Donkey Kong"];
    [donkeyKong setImagen:@"donkey-kong.jpg"];

    Personaje *kingBowser = [[Personaje alloc] init];
    [kingBowser setNombre:@"King Bowser"];
    [kingBowser setImagen:@"king-bowser.jpg"];

    Personaje *toad = [[Personaje alloc] init];
    [toad setNombre:@"Toad"];
    [toad setImagen:@"toad.jpg"];

    Personaje *yoshi = [[Personaje alloc] init];
    [yoshi setNombre:@"Yoshi"];
    [yoshi setImagen:@"yoshi.jpg"];
    
    // Dos formas de inicializar un NSArray:
    //personajes = [[NSArray alloc] initWithObjects:mario, luigi, donkeyKong, kingBowser, toad, yoshi, nil];
    
    personajes = @[mario, luigi, donkeyKong, kingBowser, toad, yoshi];
    
    consolas = @[@"NES", @"Wii", @"Nintendo 64", @"Family"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Picker View Datasource y Delegate metodos

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    int numElementos;
    
    switch (component) {
        case 0: // personajes
            numElementos = [personajes count];
            break;
        case 1: // consolas
            numElementos = [consolas count];
            break;
    }
    
    return numElementos;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    NSString *salida;
    
    switch (component) {
        case 0: {
            Personaje *personaje = [personajes objectAtIndex:row];
            salida = [personaje nombre];
            break;
        }
        case 1: {
            salida = [consolas objectAtIndex:row];
            break;
        }
    }
    
    return salida;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    // Cuando el usuario "picke" en una fila de cierta columna voy a mostrar la imagen correspondiente
    
    switch (component) {
        case 0: {
            Personaje *personaje = [personajes objectAtIndex:row];
            
            UIImage *imagenPersonaje = [UIImage imageNamed:personaje.imagen];
            
            [self.image setImage:imagenPersonaje];
            break;
        }
        case 1: {
            NSLog(@"Consola de juego seleccionada %@", [consolas objectAtIndex:row]);
        }
    }
}


@end









