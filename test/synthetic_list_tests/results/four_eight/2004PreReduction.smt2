
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (and (is-Cons Nil) (= l0 l0)) )
(assert (is-Nil l3) )
(assert (= l3 l0) )
(assert (or (= l3 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (or (= l1 l3) (= l3 l3) (= l3 Nil) (is-Cons l2)) )
(assert (and (is-Nil l3) (is-Cons Nil) (is-Cons l3) (is-Cons l1)) )
(assert (is-Nil Nil) )
(check-sat)
