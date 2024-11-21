function queueTime(customers, n) {

    let tills = Array(n).fill(0);

    for(customer of customers) {
      idx = tills.indexOf(Math.min(...tills));

      tills[idx] += customer
    }

    return Math.max(...tills)
}
