
# StackViewWithPicker

## Vista creada con:
- Programmatic + AutoLayout

## Breve explicación de lo que se va a resolver

```bash
La app busca crear un layout vertical centrado con botones, un texto y la elección de una opción (puede ser a través de una lista de opciones o dando al usuario la posibilidad de ingresar manualmente una nueva opción).
```

## Resolución técnica

- Busco resolver el enunciado a través de una **Vertical Stackview**. 
- Utilizo los delegates de PickerView y UITextField para enterarme de sus modificaciones y relacionarlos.
- Utilizo UIPickerViewDataSource para darle los valores de selección al picker.
- Cree un array para almacenar esos valores para el picker.

## ¿Cómo correr el proyecto?

- Clonar el proyecto de Github
- Abrir StackViewWithPicker.xcodeproj con el Xcode 
- Run (Control + R).

## ScreenShots
![ezgif-7-48ab758abb](https://user-images.githubusercontent.com/91626112/150181831-7c64f9d8-d85c-47b6-9d28-f7c653eb5818.gif)
