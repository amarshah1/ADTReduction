
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
(assert (and (= l3 Nil) (= l3 l1)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l0 l3) (= l0 Nil)) )
(assert (or (= l2 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (not (= l2 l2)) )
(check-sat)