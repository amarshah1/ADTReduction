
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
(assert (and (is-Nil Nil) (= l1 l1)) )
(assert (or (= l2 Nil) (is-Cons l3) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 l2) (= l1 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Nil l1) )
(assert (is-Nil l3) )
(check-sat)
