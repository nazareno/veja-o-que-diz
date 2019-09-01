# Veja o que você está dizendo

Análise do discurso de políticos em vídeos do youtube. 

## Dependências

Instale o `youtube-dl`.

## Obtendo as transcrições dos vídeos em um canal

1. Obtain closed caption transcriptions

```
mkdir fulano
cd fulano
../code/download_cc.sh <YT USER URL>
```

2. Filter out irrelevant videos


3. Clean all relevant CCs

```
ls | while read -r line; 
do 
  ../code/clean_ccs.sh "$line"; 
done > ../data/fulano.txt
```

ou

```
ls | while read -r line; 
do 
  echo \"$line\" \; `../code/clean_ccs.sh "$line"` ; 
done > output.txt
```

## Análise

