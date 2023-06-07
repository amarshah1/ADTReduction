
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
(assert (= l3 Nil) )
(assert (= l3 l3) )
(assert (or (= l2 l3) (= l1 l0)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil l3) )
(check-sat)