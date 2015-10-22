//
//  main.c
//  c
//
//  Created by Kostiantyn Koval on 01/08/15.
//  Copyright © 2015 Kostiantyn Koval. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

static const uint32_t MAX_COUNT = 100000;
static const uint32_t NUM_TRIALS = 20;

int compare(const void * a, const void * b)
{
  
  if ( *(uint32_t*)a < *(uint32_t*)b ) {
    return -1;
  }
  
  if ( *(uint32_t*)a > *(uint32_t*)b ) {
    return 1;
  }
  
  return 0;
}

void makeArray(uint32_t arr[], const unsigned int count)
{
  for (unsigned int i = 0; i < count; i++) {
    arr[i] = arc4random_uniform(UINT32_MAX);
  }
}

int main(int argc, const char * argv[]) {
  
  uint32_t array[MAX_COUNT];
  double resultsSum = 0;
  
  for (unsigned int i = 0; i < NUM_TRIALS; i++) {
    
    makeArray(array, MAX_COUNT);
    
    double startTime = clock();
    qsort(array, MAX_COUNT, sizeof(uint32_t), compare);
    double endTime = clock();
    
    double totalTime = (endTime - startTime) / CLOCKS_PER_SEC;
    resultsSum += totalTime;
    printf("time: %.6lf s\n", totalTime);
    
    memset(&array[0], 0, sizeof(array));
  }
  printf("\nRESULT: %.6lf s", resultsSum / NUM_TRIALS);
  return 0;
}
