
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
(assert (= l2 l1) )
(assert (= l3 Nil) )
(assert (and (= l0 l3) (= l1 Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil) (is-Cons l0) (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil l3) )
(assert (= l3 Nil) )
(check-sat)
