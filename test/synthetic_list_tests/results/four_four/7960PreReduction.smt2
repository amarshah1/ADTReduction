
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
(assert (or (= l3 l3) (= l0 Nil) (is-Cons l3) (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l3 Nil) (is-Cons Nil) (is-Nil l1)) )
(assert (or (= l3 Nil) (= l1 Nil) (is-Cons Nil) (= l3 Nil)) )
(check-sat)
