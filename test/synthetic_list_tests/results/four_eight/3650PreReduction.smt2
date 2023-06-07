
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
(assert (and (is-Cons Nil) (= l1 Nil) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (= l3 l3) )
(assert (= l0 Nil) )
(check-sat)
