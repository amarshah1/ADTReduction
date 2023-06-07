
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
(assert (= l2 Nil) )
(assert (or (= l3 Nil) (= l3 l3) (= l2 Nil) (is-Cons Nil)) )
(assert (= l0 l3) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l2 l3) (is-Nil l0)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(check-sat)