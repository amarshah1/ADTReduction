
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
(assert (and (is-Cons l3) (= l1 Nil)) )
(assert (is-Cons l3) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l3 l2) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (not (= l3 l0)) )
(assert (not (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)
