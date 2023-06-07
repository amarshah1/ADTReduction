
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
(assert (and (= l2 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (not (is-Nil l3)) )
(assert (not (is-Nil l1)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (is-Cons l2) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l3 Nil) (= l3 l2)) )
(check-sat)
