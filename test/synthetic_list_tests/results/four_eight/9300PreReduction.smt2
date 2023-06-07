
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
(assert (and (= l2 l2) (is-Cons l2) (is-Cons Nil) (= l1 Nil)) )
(assert (not (= l2 l0)) )
(assert (not (= l1 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l3 Nil)) )
(assert (and (= l3 Nil) (is-Nil l2) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l1 Nil) )
(check-sat)