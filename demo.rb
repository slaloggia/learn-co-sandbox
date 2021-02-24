function findMin(firstHalf, secondHalf){
  let minfirstHalf = firstHalf[0]
  let minsecondHalf = secondHalf[0]
 
  if(minfirstHalf < minsecondHalf){
    return minfirstHalf
  } else {
    return minsecondHalf
  }
}

function merge(firstHalf, secondHalf){
  let sorted = []
  let currentMin;
  while(firstHalf.length != 0 && secondHalf.length != 0){
    let currentMin = findMinAndRemove(firstHalf, secondHalf)
    sorted.push(currentMin)
  }
  return sorted.concat(firstHalf).concat(secondHalf)
}

function mergeSort(array){
    let midpoint = array.length/2
    let firstHalf = array.slice(0, midpoint)
    let secondHalf = array.slice(midpoint, array.length)
 
    if(array.length < 2){
      return array
    } else {
      merge(mergeSort(firstHalf), mergeSort(secondHalf))
    }
  }
  
  let array = [2, 5, 6, 1, 9, 4, 8, 7]
  mergeSort(array)