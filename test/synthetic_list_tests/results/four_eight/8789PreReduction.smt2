
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
(assert (is-Cons Nil) )
(assert (= l2 l1) )
(assert (and (= l1 l2) (is-Cons Nil)) )
(assert (and (= l1 Nil) (is-Cons l1) (is-Cons l3) (= l2 Nil)) )
(assert (is-Nil l3) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l1 l1)) )
(check-sat)
