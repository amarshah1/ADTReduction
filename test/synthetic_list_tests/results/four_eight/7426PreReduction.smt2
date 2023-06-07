
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
(assert (= l3 l1) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (not (= l2 l2)) )
(assert (or (= l2 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Cons l3) (is-Cons Nil) (= l2 l1)) )
(check-sat)
