# age-of-mixins-ruby

Código del ejercicio introductorio que vimos la primera clase.

## Organización de los ejemplos
El repositorio contiene muchas ramas, cada una apuntando al resultado de una decisión particular de diseño que tomamos durante la clase.

Por ejemplo, para resolver el último problema vimos:
- `jerarquia_forzada`
- `anti_clases`
- `delegacion`
- `feature_flags`
- `mixines`

Pueden navegar entre las ramas para ver el contenido de cada una.

Además, los _commits_ incluyen algunos cambios menores en forma más granular, que también pueden ser interesantes para ver por separado.

## Instrucciones para ejecutarlo localmente

Para poder hacer el _set-up_ del proyecto y ejecutar el código, `ruby` y la gema `bundler` tienen que estar instalados.

### Verificación de la instalación de Ruby y Bundler

Para verificar que tenemos Ruby instalado, se puede ejecutar el comando `ruby --version` en una consola, y como resultado van a ver el número de versión que tienen de Ruby.
Por ejemplo:

```bash
$ ruby --version
# => ruby 3.4.9 (2026-03-11 revision 76cca827ab) +PRISM [x86_64-linux]
```

De manera similar, para verificar que tenemos Bundler, se puede correr el comando `bundle --version`.
Por ejemplo:

```bash
$ bundle --version
# => Bundler version 2.6.9
```

### Preparación del proyecto

Luego de clonar el repositorio, deben posicionarse sobre el directorio del proyecto y ejecutar el comando `bundle install` para instalar las dependencias del proyecto.
```bash
$ bundle install
```

Una vez que las dependencias estén instaladas, para correr los tests deben usar el comando `bundle exec rspec`.
```bash
$ bundle exec rspec
```
