
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
(assert (not (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l1 Nil) (= l3 Nil) (= l2 l0)) )
(assert (= l2 l3) )
(assert (not (is-Cons Nil)) )
(assert (and (= l3 Nil) (= l1 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
